import { SESSION_CONSTANTS } from '../actions/session_actions';
import { createUser, loginUser } from '../utils/session_middleware';

const SessionMiddleware = ({getState, dispatch}) => next => action => {
  switch (action.type) {
    case SESSION_CONSTANTS.CREATE_USER:
      break;
    case SESSION_CONSTANTS.LOGIN_USER:
      break;
    default:
      return next(action);
  }
};

export default SessionMiddleware;
