import { connect } from 'react-redux';
import References from './references';

const mapStateToProps = (state) => ({
  references: state.references.references
});

const mapDispatchToProps = (dispatch) => ({});

export default connect(mapStateToProps, null)(References);
