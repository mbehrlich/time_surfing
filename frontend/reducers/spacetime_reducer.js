import { SPACETIME_CONSTANTS } from '../actions/spacetime_actions';
import { merge } from 'lodash';

let defaultState = {lat: 37, lng: -122, start_date: "-2000-01-01", end_date: (new Date()).toISOString().slice(0, 10)}

const SpacetimeReducer = (state = defaultState, action) => {
  let newState;
  switch (action.type) {
    case SPACETIME_CONSTANTS.UPDATE_SPACETIME:
      newState = action.spacetime;
      return newState;
    default:
      return state;
  }
};

export default SpacetimeReducer;
