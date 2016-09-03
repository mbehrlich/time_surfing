import { SITE_CONSTANTS, receiveSites, receiveSiteErrors } from '../actions/site_actions';
import { receiveUser, receiveErrors } from '../actions/session_actions';
import { updateSite, fetchSites } from '../utils/site_util';

const SiteMiddleware = ({getState, dispatch}) => next => action => {
  let success;
  let error;
  switch (action.type) {
    case SITE_CONSTANTS.UPDATE_SITE:
      success = (user) => dispatch(receiveUser(user));
      error = (errors) => dispatch(receiveErrors(errors.responseJSON));
      updateSite(action.id, action.newInfo, success, error);
      return next(action);
    case SITE_CONSTANTS.REQUEST_SITES:
      success = (sites) => dispatch(receiveSites(sites));
      error = (errors) => dispatch(receiveSiteErrors(errors));
      fetchSites(success, error);
      return next(action);
    default:
      return next(action);
  }
};

export default SiteMiddleware;
