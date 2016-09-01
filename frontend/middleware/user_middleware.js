import { USER_CONSTANTS, receiveOtherUser, receiveUserErrors } from '../actions/user_actions';
import { fetchUser } from '../utils/user_util';

const UserMiddleware = ({ getState, dispatch }) => next => action => {
  let success;
  let error = (errors) => {
    dispatch(receiveUserErrors(errors.responseJSON))
  };
  console.log(action);
  switch (action.type) {
    case USER_CONSTANTS.REQUEST_USER:
      success = (user) => {
        dispatch(receiveOtherUser(user));
      };
      fetchUser(action.id, success, error);
      return next(action);
    default:
      return next(action);
  }
};

export default UserMiddleware;
