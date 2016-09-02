import { SITE_CONSTANTS } from '../actions/site_actions';
import { receiveUser, receiveErrors } from '../actions/session_actions';
import { updateSite } from '../utils/site_util';

const SiteMiddleware = ({getState, dispatch}) => next => action => {
  let success;
  let error;
  switch (action.type) {
    case SITE_CONSTANTS.UPDATE_SITE:
      success = (user) => dispatch(receiveUser(user));
      error = (errors) => dispatch(receiveErrors(errors.responseJSON));
      updateSite(action.id, action.newInfo, success, error);
      return next(action);
    default:
      return next(action);
  }
};

export default SiteMiddleware;
