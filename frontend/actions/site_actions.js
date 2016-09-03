export const SITE_CONSTANTS = {
  UPDATE_SITE: "UPDATE_SITE",
  REQUEST_SITES: "REQUEST_SITES",
  RECEIVE_SITES: "RECEIVE_SITES",
  RECEIVE_SITE_ERRORS: "RECEIVE_SITE_ERRORS"
};

export const updateSite = (id, newInfo) => ({
  type: SITE_CONSTANTS.UPDATE_SITE,
  id,
  newInfo
});

export const requestSites = () => ({
  type: SITE_CONSTANTS.REQUEST_SITES
});

export const receiveSites = (sites) => ({
  type: SITE_CONSTANTS.RECEIVE_SITES,
  sites
});

export const receiveSiteErrors = (errors) => ({
  type: SITE_CONSTANTS.RECEIVE_SITE_ERRORS,
  errors
});
