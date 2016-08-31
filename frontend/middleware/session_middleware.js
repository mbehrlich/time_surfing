import { SESSION_CONSTANTS } from '../actions/session_actions';
import { createUser, loginUser, logoutUser } from '../utils/session_util';
import { receiveUser, receiveErrors } from '../actions/session_actions';

const SessionMiddleware = ({getState, dispatch}) => next => action => {
  let success = (user) => dispatch(receiveUser(user));
  let error = (errors) => {
    dispatch(receiveErrors(errors.responseJSON))
  };
  switch (action.type) {
    case SESSION_CONSTANTS.CREATE_USER:
      createUser(action.user, success, error);
      return next(action);
    case SESSION_CONSTANTS.LOGIN_USER:
      loginUser(action.user, success, error);
      return next(action);
    case SESSION_CONSTANTS.LOGOUT_USER:
      success = () => next(action);
      logoutUser(success, error);
      break;
    default:
      return next(action);
  }
};

export default SessionMiddleware;
