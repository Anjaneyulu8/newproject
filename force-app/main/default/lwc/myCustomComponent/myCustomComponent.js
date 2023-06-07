import { LightningElement,wire,track } from 'lwc';
import getProducts from '@salesforce/apex/UserCredentials.getProducts';
export default class MyCustomComponent extends LightningElement {
    selectedProductId;
    productOptions;
    
    @wire(getProducts)
    products(result) {
        if (result.data) {
            this.productOptions = result.data.map(product => ({
                label: product.Name,
                value: product.Id
            }));
        } else if (result.error) {
            console.error(result.error);
        }
    }

    handleChange(event) {
        this.selectedProductId = event.detail.value;
        console.log('37',this.selectedProductId);
    }


    

    @track products = [
        {
            id: 1,
            name: 'Samsung 55Inch',
            description: 'The latest SamSung model with an A15 Bionic chip and 5G connectivity.',
            image: 'https://m.media-amazon.com/images/I/71MlcO29QOL._AC_SL1500_.jpg',
            price: '$999.00'
        },
        {
            id: 2,
            name: 'Sony PlayStation 5',
            description: 'The next-generation console with lightning-fast loading, haptic feedback, and 3D audio.',
            image: 'https://m.media-amazon.com/images/I/619BkvKW35L._AC_SL1500_.jpg',
            price: '$499.99'
        },
        {
            id: 3,
            name: 'Iphone Watch 4',
            description: 'A sleek smartwatch with a rotating bezel, fitness tracking, and GPS functionality.',
            image: ' https://m.media-amazon.com/images/I/71zny7BTRlL._AC_SL1500_.jpg',
            price: '$249.99'
        },
        {
            id: 4,
            name: 'Bose QuietComfort 35 II Wireless Bluetooth Headphones',
            description: 'Noise-cancelling headphones with Alexa voice control and up to 20 hours of battery life.',
            image: 'https://m.media-amazon.com/images/I/81+jNVOUsJL._AC_SL1500_.jpg',
            price: '$299.00'
        },
        {
            id: 5,
            name: 'Bose QuietComfort 35 II Wireless Bluetooth Headphones',
            description: 'Noise-cancelling headphones with Alexa voice control and up to 20 hours of battery life.',
            image: 'https://m.media-amazon.com/images/I/81+jNVOUsJL._AC_SL1500_.jpg',
            price: '$299.00'
        },
        {
            id: 6,
            name: 'Bose QuietComfort 35 II Wireless Bluetooth Headphones',
            description: 'Noise-cancelling headphones with Alexa voice control and up to 20 hours of battery life.',
            image: 'https://m.media-amazon.com/images/I/81+jNVOUsJL._AC_SL1500_.jpg',
            price: '$299.00'
        }
    ];

    buyProduct(event) {
        const productId = event.target.dataset.id;
        console.log('74',productId);
        // Implement your buy product functionality here
    }

}