import { SESSION_CONSTANTS } from '../actions/session_actions';
import { createUser, loginUser } from '../utils/session_middleware';
import { receiveUser, receiveErrors } from '../actions/session_actions';

const SessionMiddleware = ({getState, dispatch}) => next => action => {
  let success;
  let error;
  switch (action.type) {
    case SESSION_CONSTANTS.CREATE_USER:
      success = (data) => dispatch(receiveUser(data));
      error = (errors) => dispatch(receiveErrors(data));
      createUser(action.user, success, error);
      return next(action);
    case SESSION_CONSTANTS.LOGIN_USER:
      success = (data) => dispatch(receiveUser(data));
      error = (errors) => dispatch(receiveErrors(data));
      loginUser(action.user, success, error);
      return next(action);
    default:
      return next(action);
  }
};

export default SessionMiddleware;
