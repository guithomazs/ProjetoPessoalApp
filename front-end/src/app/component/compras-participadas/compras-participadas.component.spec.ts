import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ComprasParticipadasComponent } from './compras-participadas.component';

describe('ComprasParticipadasComponent', () => {
  let component: ComprasParticipadasComponent;
  let fixture: ComponentFixture<ComprasParticipadasComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ComprasParticipadasComponent]
    });
    fixture = TestBed.createComponent(ComprasParticipadasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
