import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:autofit/ui/pages/messages_page.dart';
import 'package:autofit/ui/pages/my_cards_page.dart';
import 'package:autofit/ui/pages/utility_bills_page.dart';

enum NavigationEvents {
  DashboardClickedEvent,
  MessagesClickedEvent,
  UtilityClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap}) : super(MyCardsPage(onMenuTap: onMenuTap));

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickedEvent:
        yield MyCardsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.MessagesClickedEvent:
        yield MessagesPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.UtilityClickedEvent:
        yield UtilityBillsPage(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}