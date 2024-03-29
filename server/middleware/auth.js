import dotenv from "dotenv";
import jwt from "jsonwebtoken";

const auth = (req, res, next) => {
  const authHeader = req.headers["authorization"];
  const token = authHeader && authHeader.split(" ")[1];
  console.log("------Middleware TOKEN-------", token);

  if (!token) {
    return res.status(401).json({ error: "Missing token!" });
  }

  // jwt.verify(token, process.env.APP_KEY, (err, user) => {
  jwt.verify(token, "dfasdfhjsadhfkja34343", (err, user) => {
    if (err) {
      return res.status(401).json({ error: err });
    }
    req.user = user;
  });

  next();
};

export default auth;
