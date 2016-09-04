import { FILTER_CONSTANTS } from '../actions/filter_actions';
import { merge } from 'lodash';

let defaultState = {bounds: {}, location: {}, time: {from: "1968-01-01", to: "1992-12-31"}}

const FilterReducer = (state = defaultState, action) => {
  let newState;
  switch (action.type) {
    case FILTER_CONSTANTS.UPDATE_BOUNDS:
      newState = merge({}, state);
      newState.bounds = action.bounds;
      return newState;
    case FILTER_CONSTANTS.UPDATE_DATES:
      newState = merge({}, state);
      newState.time = {from: action.from, to: action.to};
      return newState;
    default:
      return state;
  }
};

export default FilterReducer;
