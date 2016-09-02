import React from 'react';
import SearchForm from "./search_form";
import SearchResults from "./search_results";
import Map from './map';

class Search extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div>
        <div className="block-navbar"></div>
        <main className="search-main">
          <SearchForm />
          <SearchResults />
        </main>
        <aside className="search-map">
          <Map />
        </aside>
      </div>
    );
  }

}

export default Search;
