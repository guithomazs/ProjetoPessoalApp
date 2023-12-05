import { Component, OnInit } from '@angular/core';
import { Compra } from 'src/app/model/compra';
import { CompraParticipante } from 'src/app/model/compraParticipante';
import { ParticipanteService } from 'src/app/service/participante-service.service';

@Component({
  selector: 'app-compras-participadas',
  templateUrl: './compras-participadas.component.html',
  styleUrls: ['./compras-participadas.component.scss']
})
export class ComprasParticipadasComponent implements OnInit {

  constructor(private servico: ParticipanteService) {}

  ngOnInit(): void {
    this.get()
  }

  compras: CompraParticipante[] = [];

  get(): void  {
    this.servico.getParticipadas().subscribe({
      next: (resposta: CompraParticipante[]) => {
        this.compras = resposta
      },
      complete: () => {
        console.log(this.compras)
      }
    })
  }


}
