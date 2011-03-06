﻿/***********************************************************************GENERIC 3D PARTICLE CLASSTakes care of an individual particlev0.4.0TODO:create superclass for particles so different behaviours can be added quite easily-----------------------------------Copyright (c) 2008, Memo Akten, www.memo.tvThis program is free software: you can redistribute it and/or modifyit under the terms of the GNU General Public License as published bythe Free Software Foundation, either version 3 of the License, or(at your option) any later version.This program is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the implied warranty ofMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See theGNU General Public License for more details.You should have received a copy of the GNU General Public Licensealong with this program.  If not, see <http://www.gnu.org/licenses/>.	***********************************************************************/	package msa.sprite3d {	import flash.utils.*		public class Particle3D extends Node3D {		private var _age:int;		private var _birthTime:int;		private var _maxSize:Number;				private var pSystem:ParticleSystem3D;		public function Particle3D(pSystem:ParticleSystem3D, graphicClass:Class, tx:Number = 0, ty:Number = 0, tz:Number = 0) {			super(tx, ty, tz);							// call super (Node3D) constructor			this.pSystem = pSystem;						// save reference to the parent Particle System						addChild( new graphicClass ); 		// add the relevant graphic from the library						_birthTime = getTimer();						size.x = size.y = 0.1;			scaleX = scaleY = 0;			_maxSize = pSystem.minSize + Math.random() * (pSystem.maxSize - pSystem.minSize);						alpha = Math.random();						vel = new Vector3D((Math.random()-0.5) * pSystem.emitSpeed, (Math.random()-0.5) * pSystem.emitSpeed, (Math.random()-0.5) * pSystem.emitSpeed);			vel = Vector3D.add(vel, pSystem.inheritVel);			vr = (Math.random() - 0.5) * pSystem.maxRotSpeed;// rotational velocity			rotation = Math.random() * 360;		}				override public function update() {					// the particle behaviour is defined in here			_age = pSystem.nowTime - _birthTime;						vel.y += pSystem.gravity;			if(size.x < _maxSize) size.x = size.y += pSystem.growSpeed;			else size.x = size.y = _maxSize;						if(_age > pSystem.fadeStartTime) {				alpha *= pSystem.fadeSpeed;				if(alpha<0.01) parent.removeChild(this);			}		}	}}