export const SPACETIME_CONSTANTS = {
  UPDATE_SPACETIME: "UPDATE_SPACETIME"
};

export const updateSpacetime = (spacetime) => ({
  type: SPACETIME_CONSTANTS.UPDATE_SPACETIME,
  spacetime
});
