import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link updated', () => {
  render(<App />);
  const linkElement = screen.getByText(/Learn React/i);
  expect(linkElement).toBeInTheDocument();
});
