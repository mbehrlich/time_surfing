import { USER_CONSTANTS } from '../actions/user_actions';
import { merge } from 'lodash';

let defaultState = {user: null, errors: []};

const UserReducer = (state = defaultState, action) => {
  let newState;
  switch (action.type) {
    case USER_CONSTANTS.RECEIVE_OTHER_USER:
      newState = {user: action.user, errors: []};
      return newState;
    case USER_CONSTANTS.RECEIVE_USER_ERRORS:
      newState = {user: null, errors: action.errors};
      return newState;
    default:
      return state;
  }
};

export default UserReducer;
