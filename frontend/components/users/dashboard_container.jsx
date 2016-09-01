import { connect } from 'react-redux';
import Dashboard from './dashboard';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({});

export default connect(mapStateToProps, null)(Dashboard);