import { SITE_CONSTANTS, requestSites, receiveSites, receiveSiteErrors } from '../actions/site_actions';
import { FILTER_CONSTANTS, updateDates } from '../actions/filter_actions';
import { SPACETIME_CONSTANTS } from '../actions/spacetime_actions';
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
      let filters = getState().filters;
      fetchSites(filters, success, error);
      return next(action);
    case FILTER_CONSTANTS.UPDATE_BOUNDS:
      next(action);
      dispatch(requestSites());
      break;
    case FILTER_CONSTANTS.UPDATE_DATES:
      next(action);
      dispatch(requestSites());
      break;
    case SPACETIME_CONSTANTS.UPDATE_SPACETIME:
      dispatch(updateDates(action.spacetime.start_date, action.spacetime.end_date));
      return next(action);
    default:
      return next(action);
  }
};

export default SiteMiddleware;
