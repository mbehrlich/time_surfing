import { REFERENCE_CONSTANTS } from '../actions/reference_actions';
import { merge } from 'lodash';

let defaultState = {references: [], errors: [], received: false};

const ReferenceReducer = (state = defaultState, action) => {
  let newState;
  switch (action.type) {
    case REFERENCE_CONSTANTS.RECEIVE_REFERENCES:
      newState = {references: action.references, errors: [], received: false};
      return newState;
    case REFERENCE_CONSTANTS.RECEIVE_REFERENCE:
      newState = merge({}, state);
      newState.references.push(action.reference);
      newState.errors = [];
      newState.received = true;
      return newState;
    case REFERENCE_CONSTANTS.RECEIVE_REFERENCE_ERRORS:
      newState = merge({}, state);
      newState.errors = action.errors;
      return newState;
    case REFERENCE_CONSTANTS.CLEAR_REFERENCE:
      newState = merge({}, state);
      newState.errors = [];
      newState.received = false;
      return newState;
    default:
      newState = merge({}, state);
      newState.received = false;
      return newState;
  }
};

export default ReferenceReducer;
