import logo from './logo.svg';
import './App.css';
import NavBar from "./components/NavBar";
import { Route, Switch } from "react-router";
import { Container } from "semantic-ui-react"
import Home from "./components/Home";
import Tests from "./components/Tests";

function App() {
  return (
   <>
    <NavBar />
      <Container>
        <Switch>
          <Route exact path = "/" component = { Home } />
          <Route component={() => <p> React Router 404 Path Not Found </p>} />
        </Switch>
      </Container>
   </>
  );
}

export default App;
