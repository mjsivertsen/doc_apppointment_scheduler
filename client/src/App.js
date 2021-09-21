import './App.css';
import NavBar from "./components/NavBar";
import { Route, Switch } from "react-router";
import { Container } from "semantic-ui-react"
import { routes } from "./pages/routes"
import ViewAppointment from './pages/ViewAppointment';


function App() {
  const renderRoutes = () => {
    return routes.map((route) => (
      <Route exact path={route.pathname} component={route.component} />
    ))}

  return (
   <>
    <NavBar />
      <Container>
        <Switch>
          {renderRoutes()}
        </Switch>
      </Container>
   </>
  );
}

export default App;