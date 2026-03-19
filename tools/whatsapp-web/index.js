const { Client, LocalAuth } = require('whatsapp-web.js');
const qrcode = require('qrcode-terminal');

const client = new Client({
    authStrategy: new LocalAuth() // Salva a sessão para não pedir QR code toda vez
});

client.on('qr', (qr) => {
    // Gera o QR Code no próprio terminal do Cursor
    qrcode.generate(qr, { small: true });
});

client.on('ready', () => {
    console.log('Cliente CLI conectado com sucesso!');
});

client.on('message', msg => {
    if (msg.body == '!ping') {
        msg.reply('pong do terminal!');
    }
});

client.initialize();