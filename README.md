
# 💳 Stripe Payment Gateway Project in Flutter


### 📖 Project Overview

This project integrates the **Stripe Payment Gateway** into a Flutter app, providing a secure and straightforward way for users to make payments. It leverages the latest Stripe API features to process payments while ensuring sensitive information remains secure.

---

### ✨ Features
- Secure and seamless payment integration
- Utilizes Stripe’s latest API features
- Supports multiple payment methods (cards, Apple Pay, Google Pay)
- Real-time transaction status updates
- Built with Flutter, supporting both Android and iOS platforms

---

### ⚙️ Prerequisites
1. **Stripe Account**: [Sign up here](https://dashboard.stripe.com/register)
2. **API Keys**: Obtain your **Publishable Key** and **Secret Key** from the Stripe Dashboard.
3. **Flutter SDK**: Ensure Flutter SDK is installed (version 2.0 or higher).
4. **Backend Server**: A backend server to securely handle Stripe API requests (e.g., Node.js, Python).

---

### 🚀 Getting Started
To set up this project locally:

1. Clone the repository:
   ```bash
   git clone https://github.com/mahmoudkamalx14/stripe-flutter-payment.git
   cd stripe-flutter-payment
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Configure your Stripe keys in the `payment_constants.dart` file or directly in the project configuration file.


---


### 🔧 Configuration
Configure Stripe API keys:

1. Go to [Stripe Dashboard](https://dashboard.stripe.com/).
2. Retrieve your publishable and secret keys.
3. Add these keys to your `payment_constants.dart` file:
   ```plaintext
   STRIPE_PUBLISHABLE_KEY=your_publishable_key
   STRIPE_SECRET_KEY=your_secret_key
   ```

---

### 📸 Screenshots
Add screenshots showcasing the app’s payment flow here.

### Stripe Payment Screens
<img src="https://github.com/user-attachments/assets/66cab245-8607-493b-9f38-de7b648c256f" alt="Stripe Payment" width="300"/>
<img src="https://github.com/user-attachments/assets/314a28ba-36d3-4cfb-b968-535c32f503cc" alt="Stripe Payment" width="300"/>
<img src="https://github.com/user-attachments/assets/42aea7dc-acc9-448c-aac2-d286c5f952bd" alt="Stripe Payment" width="300"/>
<img src="https://github.com/user-attachments/assets/0254de54-9da6-4449-afb7-303516de6e40" alt="Stripe Payment" width="300"/>

---


### 🤝 Contributing
Contributions are welcome! Please fork the repository, make your changes, and submit a pull request.

---

### 📜 License
Distributed under the MIT License. See `LICENSE` for more details.
