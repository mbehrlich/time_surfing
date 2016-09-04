import React from 'react';
import SearchResult from './search_result';

const SearchResults = ({sites}) => {
  let siteEls = sites.map((site) => (
    <SearchResult key={site.id} site={site} />
  ));
  return (
    <div className="search-results">
      <h4>{siteEls.length} hosts found</h4>
      <ul>
        {siteEls}
      </ul>
    </div>
  );
}


export default SearchResults;
