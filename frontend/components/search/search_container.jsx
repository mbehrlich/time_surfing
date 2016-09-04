import { connect } from 'react-redux';
import { requestSites } from '../../actions/site_actions';
import { updateBounds, updateDates } from '../../actions/filter_actions';
import Search from './search';

const mapStateToProps = state => ({
  sites: state.sites.sites,
  filters: state.filters,
  errors: state.sites.errors
});

const mapDispatchToProps = dispatch => ({
  requestSites: () => dispatch(requestSites()),
  updateBounds: (bounds) => dispatch(updateBounds(bounds)),
  updateDates: (from, to) => dispatch(updateDates(from, to))
});

export default connect(mapStateToProps, mapDispatchToProps)(Search);
