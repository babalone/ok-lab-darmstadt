/*
From the OSM-Wiki (https://wiki.openstreetmap.org/wiki/Elements, Main article: https://wiki.openstreetmap.org/wiki/Relation):
A relation is a multi-purpose data structure that documents a relationship between two or more data elements (nodes, ways, and/or other relations). Examples include:

    A route relation, which lists the ways that form a major (numbered) highway, a cycle route, or a bus route.
    A turn restriction that says you can't turn from one way into another way.
    A multipolygon that describes an area (whose boundary is the 'outer way') with holes (the 'inner ways').

Thus, relations can have different meanings. The relation's meaning is defined by its tags. Typically, the relation will have a 'type' tag. The relation's other tags need to be interpreted in light of the type tag.

The relation is primarily an ordered list of nodes, ways, or other relations. These objects are known as the relation's members.

Each element can optionally have a role within the relation. For example, a turn restriction would have members with "from" and "to" roles, describing the particular turn that is forbidden.

A single element such as a particular way may appear multiple times in a relation.
 */
import 'element.dart';

class Relation extends Element {}
