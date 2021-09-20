import logo from './logo.svg';
import './App.css';
import NavBar from "./components/NavBar";
import { Route, Switch } from "react-router";
import { Container } from "semantic-ui-react"
import { routes } from "./pages/routes"


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
          <Route component={() => <b> React Router 404, Path Not Found </b> } />
        </Switch>
      </Container>
   </>
  );
}

export default App;