import React from 'react';
import SearchForm from "./search_form";
import SearchResults from "./search_results";
import Map from './map';

class Search extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.requestSites();
  }

  render() {
    return (
      <div className="flex-container">
        <main className="search-main">
          <SearchForm />
          <SearchResults sites={this.props.sites} />
        </main>
        <aside className="search-map">
          <Map />
        </aside>
      </div>
    );
  }

}

export default Search;
