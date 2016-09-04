export const FILTER_CONSTANTS = {
  UPDATE_BOUNDS: "UPDATE_BOUNDS",
  UPDATE_DATES: "UPDATE_DATES"
}

export const updateBounds = (bounds) => ({
  type: FILTER_CONSTANTS.UPDATE_BOUNDS,
  bounds
});

export const updateDates = (from, to) => ({
  type: FILTER_CONSTANTS.UPDATE_DATES,
  from,
  to
})
