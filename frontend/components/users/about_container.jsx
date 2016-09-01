import { connect } from 'react-redux';
import About from './about';

const getAge = (user) => {
  let age;
  if (user.username === "Doctor_Who") {
    age = "Immortal";
  } else if (user.birthdate) {
    let year = parseInt(user.birthdate.slice(0, 4));
    let month = parseInt(user.birthdate.slice(5, 7));
    let day = parseInt(user.birthdate.slice(9, 11));
    let today = (new Date());
    age = today.getFullYear() - year;
    if (today.getMonth() + 1 < month) {
      age--;
    } else if (today.getMonth() + 1 === month && today.getDate() <= day) {
      age--;
    }
  }
  return age;
}

const mapStateToProps = (store) => ({
  user: store.user.user,
  age: getAge(store.user.user)
});

const mapDispatchToProps = (dispatch) => ({});

export default connect(mapStateToProps, null)(About);
