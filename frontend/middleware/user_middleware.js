import { USER_CONSTANTS, receiveOtherUser, receiveUserErrors } from '../actions/user_actions';
import { receiveUser, receiveErrors } from '../actions/session_actions';
import { fetchUser, updateUser } from '../utils/user_util';

const UserMiddleware = ({ getState, dispatch }) => next => action => {
  let success;
  let error;
  switch (action.type) {
    case USER_CONSTANTS.REQUEST_USER:
      success = (user) => {
        dispatch(receiveOtherUser(user));
      };
      error = (errors) => {
        dispatch(receiveUserErrors(errors.responseJSON))
      };
      fetchUser(action.id, success, error);
      return next(action);
    case USER_CONSTANTS.UPDATE_USER:
      success = (user) => {
        dispatch(receiveUser(user));
      };
      error = (errors) => {
        dispatch(receiveErrors(errors.responseJSON))
      };
      updateUser(action.id, action.newInfo, success, error);
      return next(action);
    default:
      return next(action);
  }
};

export default UserMiddleware;
