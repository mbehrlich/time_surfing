import { combineReducers } from 'redux';
import SessionReducer from "./session_reducer";
import UserReducer from './user_reducer';
import SiteReducer from './site_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  user: UserReducer,
  sites: SiteReducer
});

export default RootReducer;
