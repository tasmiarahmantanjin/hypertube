import nodemailer from "nodemailer";
require("dotenv").config();
// const nodemailer = require("nodemailer");

export const sendEmail = (email, token) => {
  console.log(`Sending email to ${email}`);
  const transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
      type: 'OAuth2',
      user: process.env.USER_EMAIL,
      pass: process.env.USER_PASS,
      clientId: CLIENT_ID,
      clientSecret: CLIENT_SECRET,
      refreshToken: REFRESH_TOKEN
    },
  });
  const mailOptions = {
    to: email,
    subject: "Activate Your Hypertube Account Now",
    text: `Hello! Here is your account activation link. Please click the link to verify your account: http://localhost:8000/auth/registration-verify?token=${token}`,
  };
  transporter.sendMail(mailOptions, function (error, info) {
    if (error) {
      console.log(error);
    } else {
      console.log("Email sent: " + info.response);
    }
  });
};
