import React from 'react';
import { Button as MuiButton, ButtonProps } from '@mui/material';

export const Button: React.FC<ButtonProps> = ({ children, ...props }) => {
  return <MuiButton {...props}>{children}</MuiButton>;
};
