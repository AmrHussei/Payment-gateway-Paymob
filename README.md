# Payment getway Paymob

simple application whose main idea is to make an integration for the Payment Gateway using Paymob. On the Confirm screen, the data is taken from the user, which represents the details of the product to be ordered. On the second screen, after Confirm, there are two options for payment.The first using the card and the second using the refcode from any payment machine

## Used Tools
- Flutter  
- Dart
- BloC
- Postman
- Webview Flutter

## Features & Screens

- Confirm screen
- Toggle screen
- Visa screen
- RefCode screen

## Screenshots
![Screenshot 2023-02-12 114819](https://user-images.githubusercontent.com/94804979/218304512-c46daa31-55dd-4b57-889f-c6b8a03a68c7.png)
![Screenshot 2023-02-12 114849](https://user-images.githubusercontent.com/94804979/218304526-c656ca59-e5ff-4f77-b241-cd61bea21d01.png)
![Screenshot 2023-02-12 114907](https://user-images.githubusercontent.com/94804979/218304530-0bd329b1-2366-4ca6-b749-6bb101221f50.png)
![Screenshot 2023-02-12 114947](https://user-images.githubusercontent.com/94804979/218304540-79b48adb-ad80-4df8-90ea-a45bb2837ce8.png)
![Screenshot 2023-02-12 114918](https://user-images.githubusercontent.com/94804979/218304547-913c4442-79d4-4397-b551-532ebab958ce.png)


## Color Reference

| Color             |Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| greey | #524C56 |
| Orange | #DC5224 |




## API Reference from pexels
## Base URL https://accept.paymob.com/api/

#### Authentication Request

```http
  POST auth/tokens 
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |

#### For  Order Registration API

```http
  POST ecommerce/orders
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `token` | `string` | **Required**. Your token |

#### Payment Key Request

```http
  POST acceptance/payment_keys
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `token` | `string` | **Required**. Your first token |
| `id` | `string` | **Required**. Your id from second req |


## Packages
![Screenshot 2023-02-12 121106](https://user-images.githubusercontent.com/94804979/218304961-13a6de00-0f2a-4fa5-8a91-8b3884c480a3.png)


## Feedback
If you have any feedback, please reach out to me at amr.flutter.dev@gmail.com

## You can follow me on 
<a href="https://www.linkedin.com/in/amr-hussein-51a141220/">
         <img alt="Qries" src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"
         >
         
    
### Also You can contact  me 
```http
  020 102 854 4373
```

