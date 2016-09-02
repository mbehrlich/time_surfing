export const SITE_CONSTANTS = {
  UPDATE_SITE: "UPDATE_SITE"
};

export const updateSite = (id, newInfo) => ({
  type: SITE_CONSTANTS.UPDATE_SITE,
  id,
  newInfo
});
