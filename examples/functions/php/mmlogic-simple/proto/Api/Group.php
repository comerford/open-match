<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/protobuf-spec/frontend.proto

namespace Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Data structure for a group of players  to pass to the matchmaking function.
 * Obviously, the group can be a group of one!
 *
 * Generated from protobuf message <code>api.Group</code>
 */
class Group extends \Google\Protobuf\Internal\Message
{
    /**
     * By convention, string of space-delimited playerIDs 
     *
     * Generated from protobuf field <code>string id = 1;</code>
     */
    private $id = '';
    /**
     * By convention, a JSON-encoded string
     *
     * Generated from protobuf field <code>string properties = 2;</code>
     */
    private $properties = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $id
     *           By convention, string of space-delimited playerIDs 
     *     @type string $properties
     *           By convention, a JSON-encoded string
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Api\ProtobufSpec\Frontend::initOnce();
        parent::__construct($data);
    }

    /**
     * By convention, string of space-delimited playerIDs 
     *
     * Generated from protobuf field <code>string id = 1;</code>
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * By convention, string of space-delimited playerIDs 
     *
     * Generated from protobuf field <code>string id = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setId($var)
    {
        GPBUtil::checkString($var, True);
        $this->id = $var;

        return $this;
    }

    /**
     * By convention, a JSON-encoded string
     *
     * Generated from protobuf field <code>string properties = 2;</code>
     * @return string
     */
    public function getProperties()
    {
        return $this->properties;
    }

    /**
     * By convention, a JSON-encoded string
     *
     * Generated from protobuf field <code>string properties = 2;</code>
     * @param string $var
     * @return $this
     */
    public function setProperties($var)
    {
        GPBUtil::checkString($var, True);
        $this->properties = $var;

        return $this;
    }

}
