import { connect } from 'react-redux';
import Dashboard from './dashboard';
import { updateSite } from '../../actions/site_actions';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  updateSite: (id, newInfo) => dispatch(updateSite(id, newInfo))
});

export default connect(mapStateToProps, mapDispatchToProps)(Dashboard);
