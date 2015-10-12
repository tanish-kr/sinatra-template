# encoding: utf-8
require 'yaml'
require 'erb'

class Createdb

  ROOT_DIR = File.expand_path('../../../', __FILE__)
  PROJECT_ENVS = [:development, :test, :production]

  ##
  # constractor
  def initialize
    load
    @engine = @setting['default']['adapter']

    if @engine == 'postgresql'
      require 'pg'
    elsif @engine == 'mysql'
      require 'mysql2'
    end

    create_database
    create_table
  end

  ##
  # database.yml load
  def load
    @setting = YAML.load(ERB.new(IO.load(ROOT_DIR + '/config/database.yml')).result)
  end

  def create_database

  end

  def create_table

  end

end

namespace 'db' do

  desc 'create database'
  task 'create' do
  end

  desc 'drop database'
  task 'drop' do
  end

end
