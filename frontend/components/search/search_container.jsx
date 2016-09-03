import { connect } from 'react-redux';
import { requestSites } from '../../actions/site_actions';
import Search from './search';

const mapStateToProps = state => ({
  sites: state.sites.sites,
  errors: state.sites.errors
});

const mapDispatchToProps = dispatch => ({
  requestSites: () => dispatch(requestSites())
});

export default connect(mapStateToProps, mapDispatchToProps)(Search);
