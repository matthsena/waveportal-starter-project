import styled from '@emotion/styled'

export const Button = styled.button`
  background: hotpink;
  border: none;
  border-radius: 1rem;
  padding: 1rem;
  margin: 1rem;
  font-size: 1.25rem;
  font-weight: bold;
  color: #000;
  &:hover {
    cursor: pointer;
    transition: all 350ms ease-in-out;
    background: #fff;
    color: hotpink
  }
`