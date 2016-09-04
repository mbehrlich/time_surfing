import React from 'react';
import SearchForm from "./search_form";
import SearchResults from "./search_results";
import Map from './map';

class Search extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    // this.props.requestSites();
  }

  render() {
    return (
      <div className="flex-container">
        <main className="search-main">
          <SearchForm filters={this.props.filters} updateDates={this.props.updateDates} />
          <SearchResults sites={this.props.sites} />
        </main>
        <aside className="search-map">
          <Map sites={this.props.sites} updateBounds={this.props.updateBounds} />
        </aside>
      </div>
    );
  }

}

export default Search;
