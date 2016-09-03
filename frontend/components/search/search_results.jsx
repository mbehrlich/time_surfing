import React from 'react';

const SearchResults = ({sites}) => {
  let siteEls = sites.map((site) => (
    <p key={site.id}>{site.username}</p>
  ));
  return (
    <div className="search-results">
      {siteEls}
    </div>
  );
}


export default SearchResults;
