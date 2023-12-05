import { Compra } from "./compra";
import { Participante } from "./participante";

export type CompraParticipante = {
    id: number;
    quantidadeAPagar: number;
    compra: Compra;
    participante: Participante;
}