import Home from "./Home";
import Appointments from "./Appointments";
import ViewAppointment from "./ViewAppointment";
import AddDoctor from "./AddDoctor";
import AddPatient from "../AddPatient";
import NewAppointment from "./NewAppointment";


export const routes = [
  { pathname: "/", title: "Home", component: Home  },
  { pathname: "/appointments/", title: "Appointments", component: Appointments },
  { pathname: "/appointments/addpatient", title: "Add Patient", component: Appointments },
  { pathname: "/appointments/adddoctor", title: "Add Doctor", component: AddDoctor },
  { pathname: "/appointments/newappointment", title: "New Appointment", component: NewAppointment}
]