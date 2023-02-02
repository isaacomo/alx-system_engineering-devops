#!/usr/bin/env ruby
RGV[0].scan(/(?<=from|to|flags):(\+?\w+|[-?[0-1]:?]+)/).join(',')
