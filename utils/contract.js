import ContractABI from './TikTok.json'

export const contractAddress = '0xCB7471Fe6d5226F6152ed14e7071e40bc33E566B'

export const createContract = (web3) => {

    const contract = new web3.eth.Contract(ContractABI, contractAddress)

    return contract
}
export const modalStyles ={
    content: {
        height: '480px',
        width: '600px',
        margin: 'auto',
        display: 'flex',
        padding: '0px',
        marginTop: '100px',
        backgroundColor: 'rgb(44, 45, 48m 1)',
    },
    overlay: {
        backgroundColor: 'rgba(0, 0, 0, 0.5)',
    },
}