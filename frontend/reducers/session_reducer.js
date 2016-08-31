import { SESSION_CONSTANTS } from '../actions/session_actions';
import { merge } from 'lodash';

let defaultState = {currentUser: null, errors: []};

const SessionReducer = (state = defaultState, action) => {
  let newState;
  switch (action.type) {
    case SESSION_CONSTANTS.RECEIVE_USER:
      newState = {currentUser: action.user, errors: []};
      return newState;
    case SESSION_CONSTANTS.RECEIVE_ERRORS:
      newState = merge({}, state);
      newState.errors = action.errors;
      return newState;
    case SESSION_CONSTANTS.LOGOUT_USER:
      newState = {currentUser: null, errors: []};
      return newState;
    default:
      return state;
  }
};

export default SessionReducer
