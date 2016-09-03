import { SITE_CONSTANTS } from '../actions/site_actions';

const SiteReducer = (state = {sites: [], errors: []}, action) => {
  let newState;
  switch (action.type) {
    case SITE_CONSTANTS.RECEIVE_SITES:
      newState = {sites: action.sites, errors: []};
      return newState;
    case SITE_CONSTANTS.RECEIVE_SITE_ERRORS:
      newState = {sites: [], errors: action.errors};
      return newState;
    default:
      return state;
  }
}

export default SiteReducer;
