import { FILTER_CONSTANTS } from '../actions/filter_actions';
import { merge } from 'lodash';

let defaultState = {bounds: {northEast:{lat: 60, lng: 130}, southWest: {lat: -60, lng: -130}}, location: {}, time: {from: "-2000-01-01", to: "3000-12-31"}}

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
