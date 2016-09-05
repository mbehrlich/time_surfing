import { combineReducers } from 'redux';
import SessionReducer from "./session_reducer";
import UserReducer from './user_reducer';
import SiteReducer from './site_reducer';
import LoadingReducer from './loading_reducer';
import FilterReducer from './filter_reducer';
import SpacetimeReducer from './spacetime_reducer';
import BookingReducer from './booking_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  user: UserReducer,
  sites: SiteReducer,
  loading: LoadingReducer,
  filters: FilterReducer,
  spacetime: SpacetimeReducer,
  bookings: BookingReducer
});

export default RootReducer;
