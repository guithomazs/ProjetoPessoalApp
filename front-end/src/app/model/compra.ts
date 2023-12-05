import { Participante } from "./participante";

export type Compra = {
    id: number;
    fiador: Participante;
    total: number;
    data: string;
    hora: string;
    local: string | null;
    descricao: string | null;
}