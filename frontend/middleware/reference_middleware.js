import { REFERENCE_CONSTANTS, receiveReferences, receiveReference, receiveReferenceErrors } from '../actions/reference_actions';
import { fetchReferences, createReference} from '../utils/reference_util';

const ReferenceMiddleware = ({ getState, dispatch }) => next => action => {
  let success;
  let error;
  switch (action.type) {
    case REFERENCE_CONSTANTS.REQUEST_REFERENCES:
      success = (references) => dispatch(receiveReferences(references));
      error = (errors) => console.log(errors);
      fetchReferences(action.id, success, error);
      return next(action);
    case REFERENCE_CONSTANTS.CREATE_REFERENCE:
      success = (reference) => dispatch(receiveReference(reference));
      error = (errors) => dispatch(receiveReferenceErrors(errors.responseJSON));
      createReference(action.id, action.reference, success, error);
      return next(action);
    default:
      return next(action);
  }
};

export default ReferenceMiddleware;
