import { connect } from 'react-redux';
import Splash from './splash';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({});

export default connect(mapStateToProps, null)(Splash);
