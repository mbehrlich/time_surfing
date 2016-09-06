export const REFERENCE_CONSTANTS = {
  REQUEST_REFERENCES: "REQUEST_REFERENCES",
  RECEIVE_REFERENCES: "RECEIVE_REFERENCES",
  CREATE_REFERENCE: "CREATE_REFERENCE",
  RECEIVE_REFERENCE: "RECEIVE_REFERENCE",
  RECEIVE_REFERENCE_ERRORS: "RECEIVE_REFERENCE_ERRORS",
  CLEAR_REFERENCE: "CLEAR_REFERENCE"
};

export const requestReferences = (id) => ({
  type: REFERENCE_CONSTANTS.REQUEST_REFERENCES,
  id
});

export const receiveReferences = (references) => ({
  type: REFERENCE_CONSTANTS.RECEIVE_REFERENCES,
  references
});

export const createReference = (id, reference) => ({
  type: REFERENCE_CONSTANTS.CREATE_REFERENCE,
  id,
  reference
});

export const receiveReference = (reference) => ({
  type: REFERENCE_CONSTANTS.RECEIVE_REFERENCE,
  reference
});

export const receiveReferenceErrors = (errors) => ({
  type: REFERENCE_CONSTANTS.RECEIVE_REFERENCE_ERRORS,
  errors
});

export const clearReference = () => ({
  type: REFERENCE_CONSTANTS.CLEAR_REFERENCE
});
