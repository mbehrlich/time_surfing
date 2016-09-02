import { connect } from 'react-redux';
import { updateSite } from '../../actions/site_actions';
import EditSite from './edit_site';

const mapStateToProps = (state) => {
  if (!state.session.currentUser) {
    return {
      site: undefined
    }
  } 
  return {
    site: state.session.currentUser.site
  };
};


const mapDispatchToProps = (dispatch) => ({
  updateSite: (id, newInfo) => dispatch(updateSite(id, newInfo))
});

export default connect(mapStateToProps, mapDispatchToProps)(EditSite);
